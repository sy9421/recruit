package cn.it.service;

import cn.it.dao.NewsMapper;
import cn.it.pojo.News;
import cn.it.pojo.NewsExample;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("newsService")
public class NewsServiceImpl implements NewsService{
    @Resource(name="newsMapper")
    private NewsMapper newsMapper;
    @Override
    public List<News> getAll() throws Exception {
        NewsExample example = new NewsExample();
        List<News> newsList = newsMapper.selectByExample(example);
        return newsList;
    }

    @Override
    public News getOne(int id) throws Exception {
        News news = newsMapper.selectByPrimaryKey(id);
        return news;
    }

    @Override
    public int insertNews(News news) throws Exception {
        int sc = newsMapper.insert(news);
        return sc;
    }

    @Override
    public int updateNews(News news) throws Exception {
        int sc = newsMapper.updateByPrimaryKeySelective(news);
        return sc;
    }

    @Override
    public int deleteNews(Integer newsId) throws Exception {
        int sc = newsMapper.deleteByPrimaryKey(newsId);
        return sc;
    }

    @Override
    public List<News> selectFive() throws Exception {
        List<News> list = newsMapper.selectFive();
        return list;
    }
}
