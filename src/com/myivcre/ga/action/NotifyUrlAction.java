package com.myivcre.ga.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.Goods;
import com.myivcre.ga.model.Log;
import com.myivcre.ga.model.Order;
import com.myivcre.ga.util.AlipayNotify;
@Component("notifyAction")
@Scope("prototype")
public class NotifyUrlAction extends BaseAction {
	
	public String notifyUrl() throws UnsupportedEncodingException{
		//获得请求和响应
		HttpServletResponse response=ServletActionContext.getResponse();
		HttpServletRequest request=ServletActionContext.getRequest();
		//获得响应输出流
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Map<String,String> params = new HashMap<String,String>();
		Map requestParams = request.getParameterMap();
		for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i]
						: valueStr + values[i] + ",";
			}
			//乱码解决，这段代码在出现乱码时使用。如果mysign和sign不相等也可以使用这段代码转化
			//valueStr = new String(valueStr.getBytes("ISO-8859-1"), "gbk");
			params.put(name, valueStr);
this.baseService.save(new Log(name+"___"+valueStr.toString(), new Date()));
		}
		//获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表(以下仅供参考)//
		//商户订单号

		String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");
this.baseService.save(new Log("out_trade_no___"+out_trade_no, new Date()));
		//支付宝交易号

		String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");
this.baseService.save(new Log("trade_no___"+trade_no, new Date()));
		//交易状态
		String trade_status = new String(request.getParameter("trade_status").getBytes("ISO-8859-1"),"UTF-8");
this.baseService.save(new Log("trade_status___"+trade_status, new Date()));
		//获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表(以上仅供参考)//

		if(AlipayNotify.verify(params)){//验证成功
			//////////////////////////////////////////////////////////////////////////////////////////
			//请在这里加上商户的业务逻辑程序代码

			//——请根据您的业务逻辑来编写程序（以下代码仅作参考）——
			Order order=(Order) this.baseService.getByHal("from orders where number="+out_trade_no).get(0);
			order.setWIDtrade_no(trade_no);
			this.baseService.update(order);
this.baseService.save(new Log("orderId___"+order.getId(), new Date()));
			if(trade_status.equals("WAIT_BUYER_PAY")){
				//该判断表示买家已在支付宝交易管理中产生了交易记录，但没有付款
				
					//判断该笔订单是否在商户网站中已经做过处理
						//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
						//如果有做过处理，不执行商户的业务程序
					
					out.println("success");	//请不要修改或删除
				} else if(trade_status.equals("WAIT_SELLER_SEND_GOODS")){
				//该判断表示买家已在支付宝交易管理中产生了交易记录且付款成功，但卖家没有发货
					//更新订单状态
					order.setState(2);
					this.baseService.update(order);
					//判断该笔订单是否在商户网站中已经做过处理
						//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
						//如果有做过处理，不执行商户的业务程序
					
					out.println("success");	//请不要修改或删除
				} else if(trade_status.equals("WAIT_BUYER_CONFIRM_GOODS")){
				//该判断表示卖家已经发了货，但买家还没有做确认收货的操作
					if(order.getState()==2){
						//修改状态为3
						order.setState(3);
						this.baseService.update(order);
						//更改商品库存
						for(int i=0;i<order.getItemList().size();i++){
							Goods good=order.getItemList().get(i).getGoods();
							good.deletestock(order.getItemList().get(i).getCount());
							this.baseService.update(good);
						}
					}
					//判断该笔订单是否在商户网站中已经做过处理
						
						//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
						//如果有做过处理，不执行商户的业务程序
					
					out.println("success");	//请不要修改或删除
				} else if(trade_status.equals("TRADE_FINISHED")){
				//该判断表示买家已经确认收货，这笔交易完成
					//更新订单状态  交易完成
					order.setState(4);
					this.baseService.update(order);
					//判断该笔订单是否在商户网站中已经做过处理
						//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
						//如果有做过处理，不执行商户的业务程序
					
					out.println("success");	//请不要修改或删除
				}
				else {
					out.println("success");	//请不要修改或删除
				}

			//——请根据您的业务逻辑来编写程序（以上代码仅作参考）——

			//////////////////////////////////////////////////////////////////////////////////////////
		}else{//验证失败
			out.println("fail");
		}
		return null;
	}
	public String sreturn(){
		return "paySuccess";
	}
}
