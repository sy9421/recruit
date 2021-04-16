package cn.it.service;

import cn.it.pojo.Document;

import java.util.List;

public interface DocumentService {
    int delete(Integer id) throws Exception;
    List<Document> getAll() throws Exception;
    void insert(Document document) throws Exception;
    Document getOne(Integer id) throws Exception;
    List<Document> getOneByJobFairId(Integer id) throws Exception;
    Document update(Document document) throws Exception;
}
