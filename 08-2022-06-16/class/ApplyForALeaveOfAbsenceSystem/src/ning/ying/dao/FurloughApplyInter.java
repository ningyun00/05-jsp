package ning.ying.dao;

import ning.ying.entity.FurloughApply;

import java.util.List;

/**
 * 接口
 */
public interface FurloughApplyInter {
    int addFurloughApply(FurloughApply furloughApply);

    List<FurloughApply> selectFurloughApply();
}
