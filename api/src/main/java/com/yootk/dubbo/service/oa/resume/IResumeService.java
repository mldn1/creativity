package com.yootk.dubbo.service.oa.resume;

import com.yootk.dubbo.vo.Education;
import com.yootk.dubbo.vo.Resume;
import com.yootk.dubbo.vo.ResumeState;
import com.yootk.dubbo.vo.WorkYears;

import java.util.List;
import java.util.Map;

public interface IResumeService {
    /**
     * 分页查询全部的简历
     * @param name "请输入姓名"框中输入的关键字
     * @param state "状态"框中输入的关键字
     * @param currentPage 当前页
     * @param lineSize 每页显示的记录数
     * @param columnone 要查的字段1，这里是状态
     * @param columntwo 要查的字段，这里是姓名
     * @return 返回Map集合
     */
    public Map<String,Object> findSplit(String name,String state, Long currentPage, Integer lineSize, String columnone, String columntwo) ;

    /**
     * 查询出学历表中的全部信息
     * @return 学历表对象的list集合
     */
    public List<Education> findAll();

    /**
     * 查询出简历状态表中的全部信息
     * @return 简历状态表的list集合
     */
    public List<ResumeState> findResumeState();

    /**
     * 根据简历id查询出简历对象
     * @param resid 简历id
     * @return 返回简历的List集合
     */
    public Resume findResumeByResid(Long resid);

    /**
     * 查询出工作经验表中的全部信息
     * @return 返回工作经验表的List集合
     */
    public List<WorkYears> findWorkYears();

    /**
     * 创建新的简历
     * @param resume 传的是简历对象
     * @return 返回true为创建成功，返回false为创建失败
     */
    public boolean doCreate(Resume resume);

    /**
     * 编辑简历
     * @param resume 传的是简历对象
     * @return 返回true为编辑成功，返回false为编辑失败
     */
    public boolean doEdit(Resume resume);

    /**
     * 删除简历
     * @param resid 传的是简历id
     * @return 返回true为删除成功，返回false为删除失败
     */
    public boolean doRemove(Long resid);
}
