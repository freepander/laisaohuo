package com.myivcre.ga.util;

import com.myivcre.ga.model.Cart;
import com.myivcre.ga.model.Order;
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
		item.setPrice(item.getGoods().getNowPrice()*item.getCount());
		if(item.getGoods().getDiscount()==1){
			//未打折商品
			item.setNowPrice(item.getGoods().getNowPrice()*item.getCount());
			item.setMessagae("");
			item.setDiscount(0);
		}else if(item.getGoods().getDiscount()<1){
			//打折商品
			item.setNowPrice(item.getGoods().getDiscountPrice()*item.getCount());
			item.setMessagae("折扣"+String.valueOf(item.getGoods().getDiscount()));
			item.setDiscount(item.getPrice()-item.getNowPrice());
		}
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
	public static double order(Order order){
		double money=0;
		for(OrderItem item:order.getItemList()){
			money+=item.getNowPrice();
		}
		order.setNowPrice(money+5);
		order.setPrice(money+5);
		return money;
	}

}
