
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
      'Louisiana Urgent Care',
      '4451 La Hwy 1 S
Port Allen, LA 70767',
      'Port Allen',
      'LA',
      '4451 Hwy 1 South',
      'Yes',
      '30.4144877',
      '-91.2240298'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Louisiana Urgent Care'
        AND o.latitude = '30.4144877'
        AND o.longitude = '-91.2240298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Louisiana Urgent Care'
        AND o.latitude = '30.4144877'
        AND o.longitude = '-91.2240298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Louisiana Urgent Care'
        AND o.latitude = '30.4144877'
        AND o.longitude = '-91.2240298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Louisiana Urgent Care'
        AND o.latitude = '30.4144877'
        AND o.longitude = '-91.2240298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Louisiana Urgent Care'
        AND o.latitude = '30.4144877'
        AND o.longitude = '-91.2240298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Louisiana Urgent Care'
        AND o.latitude = '30.4144877'
        AND o.longitude = '-91.2240298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Louisiana Urgent Care'
        AND o.latitude = '30.4144877'
        AND o.longitude = '-91.2240298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Louisiana Urgent Care'
        AND o.latitude = '30.4144877'
        AND o.longitude = '-91.2240298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Louisiana Urgent Care'
        AND o.latitude = '30.4144877'
        AND o.longitude = '-91.2240298'));

COMMIT;
