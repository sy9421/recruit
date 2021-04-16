package cn.it.service;

import cn.it.pojo.News;

import java.util.List;

public interface NewsService {
    List<News> getAll() throws Exception;
    News getOne(int id) throws Exception;
    int insertNews(News news) throws Exception;
    int updateNews(News news) throws Exception;
    int deleteNews(Integer newsId) throws Exception;
    List<News> selectFive() throws Exception;
}
