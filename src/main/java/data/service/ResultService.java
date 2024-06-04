package data.service;

import data.dto.ResultDto;
import data.mapper.ResultMapperInter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.support.TransactionTemplate;

@Service
public class ResultService {
    @Autowired
    private ResultMapperInter resultInter;

    @Autowired
    private TransactionTemplate transactionTemplate;

    public void updateResult(String subject, String column) {
        transactionTemplate.execute(status -> {
            try {
                int count = resultInter.getResultCountBySubject(subject);
                if (count == 0) {
                    resultInter.insertResult(subject);
                }
                resultInter.updateResult(subject, column);
                return null;
            } catch (Exception e) {
                status.setRollbackOnly();
                throw new RuntimeException("Failed to update result", e);
            }
        });
    }}
