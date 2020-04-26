
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Childrens Hospital, Minneapolis',
      '17752 58th Circle North
Plymouth, MN 55446',
      'Plymouth',
      'MN',
      '',
      'Yes',
      '45.0584723',
      '-93.50513'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Childrens Hospital, Minneapolis'
        AND o.latitude = '45.0584723'
        AND o.longitude = '-93.50513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Childrens Hospital, Minneapolis'
        AND o.latitude = '45.0584723'
        AND o.longitude = '-93.50513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Childrens Hospital, Minneapolis'
        AND o.latitude = '45.0584723'
        AND o.longitude = '-93.50513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Childrens Hospital, Minneapolis'
        AND o.latitude = '45.0584723'
        AND o.longitude = '-93.50513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Childrens Hospital, Minneapolis'
        AND o.latitude = '45.0584723'
        AND o.longitude = '-93.50513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Childrens Hospital, Minneapolis'
        AND o.latitude = '45.0584723'
        AND o.longitude = '-93.50513'));

COMMIT;
