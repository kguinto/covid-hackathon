
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
      'Advocate Lutheran General Hospital',
      '1775 Dempster Street
Park Ridge, IL 60068',
      'Park Ridge',
      'IL',
      'Main Lobby Entrance',
      'Yes',
      '42.0384783',
      '-87.847611'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advocate Lutheran General Hospital'
        AND o.latitude = '42.0384783'
        AND o.longitude = '-87.847611'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advocate Lutheran General Hospital'
        AND o.latitude = '42.0384783'
        AND o.longitude = '-87.847611'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advocate Lutheran General Hospital'
        AND o.latitude = '42.0384783'
        AND o.longitude = '-87.847611'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advocate Lutheran General Hospital'
        AND o.latitude = '42.0384783'
        AND o.longitude = '-87.847611'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advocate Lutheran General Hospital'
        AND o.latitude = '42.0384783'
        AND o.longitude = '-87.847611'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advocate Lutheran General Hospital'
        AND o.latitude = '42.0384783'
        AND o.longitude = '-87.847611'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advocate Lutheran General Hospital'
        AND o.latitude = '42.0384783'
        AND o.longitude = '-87.847611'));

COMMIT;
