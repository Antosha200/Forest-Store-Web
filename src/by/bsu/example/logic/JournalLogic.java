package by.bsu.example.logic;

import by.bsu.example.dao.DaoException;
import by.bsu.example.dao.DaoFactory;
import by.bsu.example.dao.impl.JournalDao;
import by.bsu.example.entity.Journal;

import java.util.List;


public class JournalLogic {

    private volatile static JournalLogic instance=null;
    private JournalLogic(){}

    public static JournalLogic getInstance(){
        if(instance==null){
            synchronized (JournalLogic.class) {
                if (instance == null) {
                    instance = new JournalLogic();
                }
            }
        }
        return instance;
    }

    public Journal findById(Integer id)throws LogicException{
        Journal journal = null;
        try {
            JournalDao jd = DaoFactory.getInstance().getJournalDao();
            journal=jd.findEntityById(id);
        }catch (DaoException exc){

            throw new LogicException(exc.getMessage());
        }
        return journal;
    }

    public void setMark(Integer itemId, Integer mark, Integer miss, String mdata, String note) throws LogicException{
        try {
            JournalDao jd = DaoFactory.getInstance().getJournalDao();
            Journal journal = jd.findEntityById(itemId);
            journal.setNote(note);
            journal.setMark(mark);
            journal.setMdata(mdata);
            journal.setMiss(miss);
            jd.update(journal);
        }catch (DaoException exc){

            throw new LogicException(exc.getMessage());
        }
    }

    public List<Journal> getStudentsList(Integer courseId) throws LogicException{
        List<Journal> students=null;
        try {
            JournalDao jd = DaoFactory.getInstance().getJournalDao();
            students = jd.findByCourse(courseId);
        }catch (DaoException exc){

            throw new LogicException(exc.getMessage());
        }
        return students;
    }

    public List<Journal> getStudentsListBySubunit(String subunit) throws LogicException{
        List<Journal> students=null;
        try {
            JournalDao jd = DaoFactory.getInstance().getJournalDao();
            students = jd.findBySubunit(subunit);
        }catch (DaoException exc){

            throw new LogicException(exc.getMessage());
        }
        return students;
    }

}
