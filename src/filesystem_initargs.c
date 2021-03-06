/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   filesystem_initargs.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: emartine <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/02/26 14:57:26 by emartine          #+#    #+#             */
/*   Updated: 2018/02/26 14:57:28 by emartine         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "filesystem.h"
#include "sort.h"

void			filesystem_initargs(t_fs_tree *tree, t_ls_state *state)
{
	tree->state = state;
	tree->tree = 0;
	tree->length = 0;
	tree->level = 0;
}
