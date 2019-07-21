package com.yootk.oa.service.projects.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.yootk.dubbo.service.oa.projects.IProjectService;
import com.yootk.dubbo.vo.Emp;
import com.yootk.dubbo.vo.Project;
import com.yootk.dubbo.vo.Require;
import com.yootk.dubbo.vo.Team;
import com.yootk.oa.dao.*;
import com.yootk.util.date.WorkdayUtils;
import org.springframework.beans.factory.annotation.Autowired;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author yaoxinlan
 */
@Service
public class ProjectsServiceImpl implements IProjectService {
    @Autowired
    private ProjectMapper projectMapper;
    @Autowired
    private IEmpDAO empDAO;
    @Autowired
    private ProjectstateMapper projectstateMapper;
    @Autowired
    private TeamMapper teamMapper;
    @Autowired
    private RequireMapper requireMapper;
    @Autowired
    private RequirestateMapper requirestateMapper;
    @Autowired
    private RequireperiodMapper requireperiodMapper;
    @Autowired
    private JobMapper jobMapper;

    @Override
    public Map<String, Object> getAllSplit(Long currentPage, Integer lineSize, String column, String keyWord) {
        Map<String, Object> result = new HashMap<>();
        Map<String, Object> params = new HashMap<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        params.put("start", (currentPage - 1) * lineSize);
        params.put("lineSize", lineSize);
        params.put("column", column);
        params.put("keyword", keyWord);
        List<Project> list = this.projectMapper.findSplit(params);
        result.put("allProjects", list);
        result.put("allRecorders", this.projectMapper.getAllRecorders(params));
        List<String> heads = new ArrayList<>();
        List<String> states = new ArrayList<>();
        List<String> endDate = new ArrayList<>();
        List<String> founders = new ArrayList<>();
        for (Project project : list) {
            heads.add(this.empDAO.getNameByEid(project.getHead()));
            founders.add(this.empDAO.getNameByEid(project.getFounder()));
            states.add(this.projectstateMapper.getTittleByById(project.getState()));
            endDate.add(dateFormat.format(project.getEnddate()));
        }
        result.put("allHeads", heads);
        result.put("allFounders", founders);
        result.put("allStates", states);
        result.put("endDates", endDate);
        result.put("showState", this.projectstateMapper.getAll());
        return result;
    }

    @Override
    public Map<String, Object> getAllSearchSplit(Integer state, String title, Long currentPage, Integer lineSize, String column, String keyWord) {
        Map<String, Object> result = new HashMap<>();
        Map<String, Object> params = new HashMap<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        params.put("start", (currentPage - 1) * lineSize);
        params.put("lineSize", lineSize);
        params.put("column", column);
        params.put("keyword", keyWord);
        if (state != null) {
            params.put("state", state);
            result.put("stateid", state);
        }
        if (title != null) {
            params.put("title", "%" + title + "%");
            result.put("titlename", title);
        }
        List<Project> list = this.projectMapper.findSearchSplit(params);
        result.put("allProjects", list);
        result.put("allRecorders", this.projectMapper.getAllSearchRecorders(params));
        List<String> heads = new ArrayList<>();
        List<String> states = new ArrayList<>();
        List<String> endDate = new ArrayList<>();
        List<String> founders = new ArrayList<>();
        for (Project project : list) {
            heads.add(this.empDAO.getNameByEid(project.getHead()));
            founders.add(this.empDAO.getNameByEid(project.getFounder()));
            states.add(this.projectstateMapper.getTittleByById(project.getState()));
            endDate.add(dateFormat.format(project.getEnddate()));
        }
        result.put("allHeads", heads);
        result.put("allFounders", founders);
        result.put("allStates", states);
        result.put("endDates", endDate);
        result.put("showState", this.projectstateMapper.getAll());
        return result;
    }

    @Override
    public Map<String, Object> needsList(Long proid, Long currentPage, Integer lineSize, String column, String keyWord) {
        Map<String, Object> result = new HashMap<>();
        Map<String, Object> params = new HashMap<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        params.put("start", (currentPage - 1) * lineSize);
        params.put("lineSize", lineSize);
        params.put("column", column);
        params.put("keyword", keyWord);
        params.put("proid", proid);
        List<Require> list = this.requireMapper.findSplit(params);
        result.put("allNeeds", list);
        result.put("allRecorders", this.requireMapper.getAllRecorders(params));
        List<String> founders = new ArrayList<>();
        List<String> assigneds = new ArrayList<>();
        List<String> createdate = new ArrayList<>();
        List<String> states = new ArrayList<>();
        List<String> periods = new ArrayList<>();
        for (Require require : list) {
            founders.add(this.empDAO.getNameByEid(require.getFounder()));
            assigneds.add(this.empDAO.getNameByEid(require.getAssigned()));
            createdate.add(dateFormat.format(require.getCreatedate()));
            states.add(this.requirestateMapper.getNameById(require.getState()));
            periods.add(this.requireperiodMapper.getNameById(require.getPeriod()));
        }
        result.put("allStates", this.requirestateMapper.findAll());
        result.put("allPeriods", this.requireperiodMapper.findAll());
        result.put("allEmps", this.empDAO.getAlanAll());
        result.put("founders", founders);
        result.put("assigneds", assigneds);
        result.put("createdate", createdate);
        result.put("states", states);
        result.put("periods", periods);
        return result;
    }

    @Override
    public Map<String, Object> needsSearchList(Require vo, Long currentPage, Integer lineSize, String column, String keyWord) {
        System.err.println("这个VO = " + vo);
        Map<String, Object> result = new HashMap<>();
        Map<String, Object> params = new HashMap<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        params.put("start", (currentPage - 1) * lineSize);
        params.put("lineSize", lineSize);
        params.put("column", column);
        params.put("keyword", keyWord);
        params.put("proid", vo.getProid());
        Integer state = vo.getState();
        Integer period = vo.getPeriod();
        Long assigned = vo.getAssigned();
        String title = vo.getTitle();
        if (state != null) {
            params.put("state", state);
            result.put("stateid", state);
        }
        if (period != null) {
            params.put("period", period);
            result.put("periodid", period);
        }
        if (assigned != null) {
            params.put("assigned", assigned);
            result.put("assignedid", assigned);
        }
        if (title != null && title != "") {
            params.put("title", "%" + title + "%");
            result.put("titlename", title);
        }
        List<Require> list = this.requireMapper.findSearchSplit(params);
        result.put("allNeeds", list);
        result.put("allRecorders", this.requireMapper.getAllSearchRecorders(params));
        List<String> founders = new ArrayList<>();
        List<String> assigneds = new ArrayList<>();
        List<String> createdate = new ArrayList<>();
        List<String> states = new ArrayList<>();
        List<String> periods = new ArrayList<>();
        for (Require require : list) {
            founders.add(this.empDAO.getNameByEid(require.getFounder()));
            assigneds.add(this.empDAO.getNameByEid(require.getAssigned()));
            createdate.add(dateFormat.format(require.getCreatedate()));
            states.add(this.requirestateMapper.getNameById(require.getState()));
            periods.add(this.requireperiodMapper.getNameById(require.getPeriod()));
        }
        result.put("allStates", this.requirestateMapper.findAll());
        result.put("allPeriods", this.requireperiodMapper.findAll());
        result.put("allEmps", this.empDAO.getAlanAll());
        result.put("founders", founders);
        result.put("assigneds", assigneds);
        result.put("createdate", createdate);
        result.put("states", states);
        result.put("periods", periods);
        return result;
    }

    @Override
    public Map<String, Object> getDetail(Long proid) {
        Map<String, Object> result = new HashMap<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        Project project = this.projectMapper.selectByPrimaryKey(proid);
        result.put("project", project);
        result.put("workDays", WorkdayUtils.howManyWorkday(new Date(), project.getEnddate()));
        result.put("head", this.empDAO.getNameByEid(project.getHead()));
        result.put("pl", this.empDAO.getNameByEid(project.getPl()));
        result.put("tl", this.empDAO.getNameByEid(project.getTl()));
        result.put("state", this.projectstateMapper.getTittleByById(project.getState()));
        result.put("startDate", dateFormat.format(project.getStartdate()));
        result.put("endDate", dateFormat.format(project.getEnddate()));
        return result;
    }

    @Override
    public Object chart(Long proid) {
        Map<String, Object> result = new HashMap<>();
        Map<String, Object> params;
        List<Map<String, Object>> end = new ArrayList<>();
        List<String> allJobs = this.jobMapper.getAll();
        List<Long> eids = this.teamMapper.findEids(proid);
        for (String job : allJobs) {
            params = new HashMap<>();
            result = new HashMap<>();
            params.put("job", job);
            params.put("eids", eids);
            result.put("name", job);
            result.put("value", this.empDAO.getJobCount(params));
            end.add(result);
        }
        return JSON.toJSONString(end);
    }

    @Override
    public int insertSelective(Project project) {
        return this.projectMapper.insertSelective(project);
    }

    @Override
    public Map<String, Object> getEdit(Long proid) {
        Map<String, Object> result = new HashMap<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Project project = this.projectMapper.selectByPrimaryKey(proid);
        result.put("project", project);
        result.put("allEmps", this.empDAO.getAlanAll());
        result.put("startDate", dateFormat.format(project.getStartdate()));
        result.put("endDate", dateFormat.format(project.getEnddate()));
        return result;
    }

    @Override
    public boolean update(Project project) {
        return this.projectMapper.updateByPrimaryKeySelective(project) == 1;
    }

    @Override
    public boolean add(Project project) {
        Team founder = new Team();
        Team head = new Team();
        Team pl = new Team();
        Team tl = new Team();
        founder.setEid(project.getFounder());
        founder.setProid(project.getProid());
        founder.setJoindate(new Date());
        head.setEid(project.getHead());
        head.setProid(project.getProid());
        head.setJoindate(new Date());
        pl.setEid(project.getPl());
        pl.setProid(project.getProid());
        pl.setJoindate(new Date());
        tl.setEid(project.getTl());
        tl.setProid(project.getProid());
        tl.setJoindate(new Date());
        return this.projectMapper.insertSelective(project) == 1
                && this.teamMapper.insertSelective(founder) == 1
                && this.teamMapper.insertSelective(head) == 1
                && this.teamMapper.insertSelective(pl) == 1
                && this.teamMapper.insertSelective(tl) == 1;
    }

    @Override
    public boolean state(Long proid, Integer state) {
        Project project = new Project();
        project.setProid(proid);
        project.setState(state);
        return this.projectMapper.state(project) == 1;
    }

    @Override
    public boolean addTeam(Long proid, String username) {
        Team team = new Team();
        Long eid = this.empDAO.getEidByUsername(username);
        List<Long> eids = this.teamMapper.findEids(proid);
        if (eids.contains(eid)) {
            return false;
        }
        team.setEid(eid);
        team.setProid(proid);
        team.setJoindate(new Date());
        return this.teamMapper.insertSelective(team) == 1;
    }

    @Override
    public boolean canAdd(Long proid, String username) {
        Long eid = this.empDAO.getEidByUsername(username);
        if (eid == null) {
            return false;
        }
        List<Long> eids = this.teamMapper.findEids(proid);
        if (eids.contains(eid)) {
            return false;
        }
        return true;
    }

    @Override
    public boolean deleteTeam(Long tid) {
        return this.teamMapper.deleteByPrimaryKey(tid) == 1;
    }

    @Override
    public Map<String, Object> addPre() {
        Map<String, Object> result = new HashMap<>();
        result.put("allEmps", this.empDAO.getAlanAll());
        return result;
    }

    @Override
    public Map<String, Object> findTeam(Long proid, Long currentPage, Integer lineSize) {
        Map<String, Object> result = new HashMap<>();
        Map<String, Object> params = new HashMap<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        params.put("start", (currentPage - 1) * lineSize);
        params.put("lineSize", lineSize);
        params.put("proid", proid);
        List<Team> list = this.teamMapper.findSplitByProid(params);
        List<Emp> emps = new ArrayList<>();
        List<String> joindates = new ArrayList<>();
        for (Team team : list) {
            emps.add(this.empDAO.getAlanEmp(team.getEid()));
            joindates.add(dateFormat.format(team.getJoindate()));
        }
        result.put("teams", list);
        result.put("emps", emps);
        result.put("joindates", joindates);
        result.put("allRecorders", this.teamMapper.getTeamCount(proid));
        return result;
    }
}
