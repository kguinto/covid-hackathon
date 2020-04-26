
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
      'Excela Westmoreland Hospital',
      '530 South St #380
Greensburg, PA 15601',
      'Greensburg',
      'PA',
      'Please drop off third floor.  Suite 380.',
      'Yes',
      '40.2992438',
      '-79.5543244'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excela Westmoreland Hospital'
        AND o.latitude = '40.2992438'
        AND o.longitude = '-79.5543244'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excela Westmoreland Hospital'
        AND o.latitude = '40.2992438'
        AND o.longitude = '-79.5543244'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excela Westmoreland Hospital'
        AND o.latitude = '40.2992438'
        AND o.longitude = '-79.5543244'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excela Westmoreland Hospital'
        AND o.latitude = '40.2992438'
        AND o.longitude = '-79.5543244'));

COMMIT;
