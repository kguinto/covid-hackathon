
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
      'Excel Urgent Care of CT',
      '1045 Post Rd E
Westport, CT 06880',
      'Westport',
      'CT',
      '',
      'Yes',
      '41.1391891',
      '-73.328838'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of CT'
        AND o.latitude = '41.1391891'
        AND o.longitude = '-73.328838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of CT'
        AND o.latitude = '41.1391891'
        AND o.longitude = '-73.328838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of CT'
        AND o.latitude = '41.1391891'
        AND o.longitude = '-73.328838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of CT'
        AND o.latitude = '41.1391891'
        AND o.longitude = '-73.328838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of CT'
        AND o.latitude = '41.1391891'
        AND o.longitude = '-73.328838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of CT'
        AND o.latitude = '41.1391891'
        AND o.longitude = '-73.328838'));

COMMIT;
