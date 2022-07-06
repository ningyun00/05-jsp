package com.ning.ying.entity;
/** 实体类---商品分类表 */
public class EabyProductCategory {
    private Integer id;//编号
    private String name;//商品类型名称
    private Integer parentId;//父级目录id 引用本表其它商品类型
    private Integer type;//分类级别(1:一级分类 2：二级分类 3：三级分类)
    private String iconClass;//图标

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getIconClass() {
        return iconClass;
    }

    public void setIconClass(String iconClass) {
        this.iconClass = iconClass;
    }
}
