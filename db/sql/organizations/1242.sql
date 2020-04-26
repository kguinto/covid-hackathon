
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
      'Cayuga Medical Center',
      '767 Warren Rd
Ithaca, NY 14850',
      'Ithaca',
      'NY',
      'Items can be dropped off at the rear of the building under the gazebo.',
      'Yes',
      '42.490971',
      '-76.4668825'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cayuga Medical Center'
        AND o.latitude = '42.490971'
        AND o.longitude = '-76.4668825'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cayuga Medical Center'
        AND o.latitude = '42.490971'
        AND o.longitude = '-76.4668825'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cayuga Medical Center'
        AND o.latitude = '42.490971'
        AND o.longitude = '-76.4668825'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cayuga Medical Center'
        AND o.latitude = '42.490971'
        AND o.longitude = '-76.4668825'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cayuga Medical Center'
        AND o.latitude = '42.490971'
        AND o.longitude = '-76.4668825'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cayuga Medical Center'
        AND o.latitude = '42.490971'
        AND o.longitude = '-76.4668825'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cayuga Medical Center'
        AND o.latitude = '42.490971'
        AND o.longitude = '-76.4668825'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cayuga Medical Center'
        AND o.latitude = '42.490971'
        AND o.longitude = '-76.4668825'));

COMMIT;
