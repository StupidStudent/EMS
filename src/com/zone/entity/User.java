package com.zone.entity;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * User entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user")
public class User implements java.io.Serializable
{

	// Fields

	private Integer userId;
	private String password;
	private String username;
	private Set<Article> articles = new HashSet<Article>(0);
	private Set<Site> sites = new HashSet<Site>(0);
	private Set<Reply> replies = new HashSet<Reply>(0);

	// Constructors

	/** default constructor */
	public User()
	{
	}

	/** minimal constructor */
	public User(Integer userId, String password, String username)
	{
		this.userId = userId;
		this.password = password;
		this.username = username;
	}

	/** full constructor */
	public User(Integer userId, String password, String username,
			Set<Article> articles, Set<Site> sites, Set<Reply> replies)
	{
		this.userId = userId;
		this.password = password;
		this.username = username;
		this.articles = articles;
		this.sites = sites;
		this.replies = replies;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "userId", unique = true, nullable = false)
	public Integer getUserId()
	{
		return this.userId;
	}

	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}

	@Column(name = "password", nullable = false, length = 32)
	public String getPassword()
	{
		return this.password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

	@Column(name = "username", nullable = false, length = 50)
	public String getUsername()
	{
		return this.username;
	}

	public void setUsername(String username)
	{
		this.username = username;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "user")
	public Set<Article> getArticles()
	{
		return this.articles;
	}

	public void setArticles(Set<Article> articles)
	{
		this.articles = articles;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "user")
	public Set<Site> getSites()
	{
		return this.sites;
	}

	public void setSites(Set<Site> sites)
	{
		this.sites = sites;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "user")
	public Set<Reply> getReplies()
	{
		return this.replies;
	}

	public void setReplies(Set<Reply> replies)
	{
		this.replies = replies;
	}

}