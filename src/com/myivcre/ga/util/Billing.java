package com.myivcre.ga.util;

import com.myivcre.ga.model.Cart;
import com.myivcre.ga.model.OrderItem;

/**
 * 计费系统
 * @author freepander
 *
 */
public class Billing {
	/**
	 * 对单个商品进行计费
	 * @param goods
	 * @param count
	 * @return
	 */
	public static OrderItem orderItem(OrderItem item){
		item.setNowPrice(item.getGoods().getNowPrice()*item.getCount());
		item.setPrice(item.getGoods().getNowPrice()*item.getCount());
		//优惠信息
		item.setMessagae("");
		//优惠价格
		item.setDiscount(0);
		return item;
	}
	/**
	 * 对整个购物车计费
	 * @param cart
	 * @return
	 */
	public static Cart cart(Cart cart){
		double sum=0;
		for(OrderItem c : cart.getList()){
			sum+=c.getNowPrice();
		}
		cart.setPrice(sum);
		return cart;
	}
	/**
	 * 对整个订单进行计费
	 * @param cartList
	 * @return
	 */
//	public static double order(O){
//		double money=0;
//		for(CartItem item:cartList){
//			money+=item.getPrice();
//		}
//		
//		return money;
//	}

}
