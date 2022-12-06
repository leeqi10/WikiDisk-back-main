package com.changzer.wiki.auth.entity.dto;

import io.swagger.annotations.ApiModel;
import lombok.*;
import lombok.experimental.Accessors;

/**
 * @author changzer
 * @date 2022/12/6
 * @apiNote
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value = "UserUpdateAvatarDTO", description = "更新用户头像对象")
public class UserUpdateAvatarDTO {
    private Long id;
    private String avatar;
}
