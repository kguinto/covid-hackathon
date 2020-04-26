
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
      'Urgent Care for Kids',
      '3000 S Hulen St #180
Fort Worth, TX 76109',
      'Fort Worth',
      'TX',
      'Office Manager',
      'Yes',
      '32.7081224',
      '-97.3891183'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.7081224'
        AND o.longitude = '-97.3891183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.7081224'
        AND o.longitude = '-97.3891183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.7081224'
        AND o.longitude = '-97.3891183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.7081224'
        AND o.longitude = '-97.3891183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.7081224'
        AND o.longitude = '-97.3891183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.7081224'
        AND o.longitude = '-97.3891183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.7081224'
        AND o.longitude = '-97.3891183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.7081224'
        AND o.longitude = '-97.3891183'));

COMMIT;
