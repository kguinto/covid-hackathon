
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
      'CareWell Urgent Care',
      '348 Greenwood St
Worcester, MA 01607',
      'Worcester',
      'MA',
      'Pick up or drop off. Anyway possible',
      'Unsure',
      '42.2133219',
      '-71.7976279'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareWell Urgent Care'
        AND o.latitude = '42.2133219'
        AND o.longitude = '-71.7976279'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareWell Urgent Care'
        AND o.latitude = '42.2133219'
        AND o.longitude = '-71.7976279'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareWell Urgent Care'
        AND o.latitude = '42.2133219'
        AND o.longitude = '-71.7976279'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareWell Urgent Care'
        AND o.latitude = '42.2133219'
        AND o.longitude = '-71.7976279'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareWell Urgent Care'
        AND o.latitude = '42.2133219'
        AND o.longitude = '-71.7976279'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareWell Urgent Care'
        AND o.latitude = '42.2133219'
        AND o.longitude = '-71.7976279'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Cleaning wipes hospital grade',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareWell Urgent Care'
        AND o.latitude = '42.2133219'
        AND o.longitude = '-71.7976279'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Citrace',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareWell Urgent Care'
        AND o.latitude = '42.2133219'
        AND o.longitude = '-71.7976279'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Lysol',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareWell Urgent Care'
        AND o.latitude = '42.2133219'
        AND o.longitude = '-71.7976279'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Alcohol',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareWell Urgent Care'
        AND o.latitude = '42.2133219'
        AND o.longitude = '-71.7976279'));

COMMIT;
