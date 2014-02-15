package com.myivcre.ga.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.myivcre.ga.model.ArticleCategoryOne;
import com.myivcre.ga.model.ArticleCategoryThree;
import com.opensymphony.xwork2.ActionContext;

@Component("articlesAction")
@Scope("prototype")
public class ArticleAction extends BaseAction {
	private List<ArticleCategoryOne> oneList;
	private ArticleCategoryThree article;
	private ArticleCategoryThree article2;
	
	public String getArticle(){
		this.article=(ArticleCategoryThree)this.baseService.get(ArticleCategoryThree.class, id);
		this.article2=(ArticleCategoryThree)this.baseService.get(ArticleCategoryThree.class, id);
		System.out.println(this.article.getId());
		this.oneList=this.baseService.getByHal("from articlecategoryone where deletes=false");
		System.out.println(ActionContext.getContext().getSession().get("gloablIsLogin"));
		return "article";
	}

	public List<ArticleCategoryOne> getOneList() {
		return oneList;
	}

	public void setOneList(List<ArticleCategoryOne> oneList) {
		this.oneList = oneList;
	}

	public void setArticle(ArticleCategoryThree article) {
		this.article = article;
	}

	public ArticleCategoryThree getArticle2() {
		return article2;
	}

	public void setArticle2(ArticleCategoryThree article2) {
		this.article2 = article2;
	}

}
