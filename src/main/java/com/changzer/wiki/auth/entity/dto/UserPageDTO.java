package com.changzer.wiki.auth.entity.dto;

import com.baomidou.mybatisplus.annotation.TableField;
import com.changzer.wiki.utils.entity.PageDTO;
import io.swagger.annotations.ApiModel;
import lombok.*;
import lombok.experimental.Accessors;

import java.util.Date;

/**
 * @author changzer
 * @date 2022/12/5
 * @apiNote
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value = "UserPageDTO", description = "用户分页对象")
public class UserPageDTO extends PageDTO {
    /**
     * 用户名
     */
    private Long id;


    /**
     * 用户名
     */
    private String username;

    /**
     * 昵称
     */
    private String nickname;

    /**
     * 密码
     */
    private String password;

    /**
     * 账号状态（0正常 1停用）
     */
    private String status;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 手机号
     */
    private String phone;

    /**
     * 用户性别（0男，1女，2未知）
     */
    private String sex;

    /**
     * 头像
     */
    private String avatar;

    /**
     * 专业
     */
    private String major;

    /**
     * 方向
     */
    private String direction;

    /**
     * 年级
     */
    private String grade;

    /**
     * 用户类型（0管理员，1普通用户）
     */
    private String userType;

    /**
     * 创建人的用户id
     */
    private Long createBy;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 更新人
     */
    private Long updateBy;

    /**
     * 更新时间
     */
    private Date updateTime;

    /**
     * 删除标志（0代表未删除，1代表已删除）
     */
    private Integer delFlag;

    /**
     * 微信openId
     */
    private String wxOpenId;

    /**
     * qq open id
     */
    private String qqOpenId;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    public void verify(){
        if (this.getCurrent() == null){
            this.setCurrent(1L);
        }
        if (this.getPageSize() == null){
            this.setPageSize(10L);
        }
    }
}
