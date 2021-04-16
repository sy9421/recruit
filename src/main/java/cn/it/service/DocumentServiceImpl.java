package cn.it.service;

import cn.it.dao.DocumentMapper;
import cn.it.pojo.Document;
import cn.it.pojo.DocumentExample;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("documentService")
public class DocumentServiceImpl implements DocumentService{
    @Resource(name="documentMapper")
    private DocumentMapper documentMapper;


    @Override
    public int delete(Integer id) throws Exception {
        int sc = documentMapper.deleteByPrimaryKey(id);
        return sc;
    }

    @Override
    public List<Document> getAll() throws Exception {
        DocumentExample example = new DocumentExample();
        List<Document> documentList = documentMapper.selectByExample(example);
        return documentList;
    }

    @Override
    public void insert(Document document) throws Exception {
        documentMapper.insert(document);
    }

    @Override
    public Document getOne(Integer id) throws Exception {
        Document document = documentMapper.selectByPrimaryKey(id);
        return document;
    }

    @Override
    public List<Document> getOneByJobFairId(Integer id) throws Exception {
        DocumentExample example = new DocumentExample();
        DocumentExample.Criteria criteria = example.createCriteria();
        criteria.andJobfairidEqualTo(id);
        List<Document> document = documentMapper.selectByExample(example);
        return document;
    }

    @Override
    public Document update(Document document) throws Exception {
        DocumentExample example = new DocumentExample();
        DocumentExample.Criteria criteria = example.createCriteria();
        criteria.andJobfairidEqualTo(document.getJobfairid());
        documentMapper.updateByExampleSelective(document,example);
        return null;
    }
}
