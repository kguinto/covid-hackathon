
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
      'South Jersey Family Medicine Associates ',
      '127 N Broad Street 
Woodbury, NJ 08096',
      'Woodbury ',
      'NJ',
      'Employee entrance or mail ',
      'Yes',
      '39.8405929',
      '-75.1518246'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Jersey Family Medicine Associates '
        AND o.latitude = '39.8405929'
        AND o.longitude = '-75.1518246'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Jersey Family Medicine Associates '
        AND o.latitude = '39.8405929'
        AND o.longitude = '-75.1518246'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Jersey Family Medicine Associates '
        AND o.latitude = '39.8405929'
        AND o.longitude = '-75.1518246'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Jersey Family Medicine Associates '
        AND o.latitude = '39.8405929'
        AND o.longitude = '-75.1518246'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Jersey Family Medicine Associates '
        AND o.latitude = '39.8405929'
        AND o.longitude = '-75.1518246'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Jersey Family Medicine Associates '
        AND o.latitude = '39.8405929'
        AND o.longitude = '-75.1518246'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Jersey Family Medicine Associates '
        AND o.latitude = '39.8405929'
        AND o.longitude = '-75.1518246'));

COMMIT;
