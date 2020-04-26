
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
      'Comprehensive Systems, Inc',
      '5714 Nordic Dr #500
Cedar Falls, IA 50613',
      'Cedar Falls',
      'IA',
      'Leave in entry way ',
      'Yes',
      '42.4861514',
      '-92.4469725'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Comprehensive Systems, Inc'
        AND o.latitude = '42.4861514'
        AND o.longitude = '-92.4469725'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Comprehensive Systems, Inc'
        AND o.latitude = '42.4861514'
        AND o.longitude = '-92.4469725'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Comprehensive Systems, Inc'
        AND o.latitude = '42.4861514'
        AND o.longitude = '-92.4469725'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Comprehensive Systems, Inc'
        AND o.latitude = '42.4861514'
        AND o.longitude = '-92.4469725'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Comprehensive Systems, Inc'
        AND o.latitude = '42.4861514'
        AND o.longitude = '-92.4469725'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Comprehensive Systems, Inc'
        AND o.latitude = '42.4861514'
        AND o.longitude = '-92.4469725'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Comprehensive Systems, Inc'
        AND o.latitude = '42.4861514'
        AND o.longitude = '-92.4469725'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Comprehensive Systems, Inc'
        AND o.latitude = '42.4861514'
        AND o.longitude = '-92.4469725'));

COMMIT;
