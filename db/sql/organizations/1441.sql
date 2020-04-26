
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
      'Glengariff Rehabilitation',
      '141 Dosoris Ln
Glen Cove, NY 11542',
      'Glencove ',
      'NY',
      'Attention Director of Admissions ',
      'No',
      '40.885881',
      '-73.6320507'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glengariff Rehabilitation'
        AND o.latitude = '40.885881'
        AND o.longitude = '-73.6320507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glengariff Rehabilitation'
        AND o.latitude = '40.885881'
        AND o.longitude = '-73.6320507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glengariff Rehabilitation'
        AND o.latitude = '40.885881'
        AND o.longitude = '-73.6320507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glengariff Rehabilitation'
        AND o.latitude = '40.885881'
        AND o.longitude = '-73.6320507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glengariff Rehabilitation'
        AND o.latitude = '40.885881'
        AND o.longitude = '-73.6320507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glengariff Rehabilitation'
        AND o.latitude = '40.885881'
        AND o.longitude = '-73.6320507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glengariff Rehabilitation'
        AND o.latitude = '40.885881'
        AND o.longitude = '-73.6320507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glengariff Rehabilitation'
        AND o.latitude = '40.885881'
        AND o.longitude = '-73.6320507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glengariff Rehabilitation'
        AND o.latitude = '40.885881'
        AND o.longitude = '-73.6320507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glengariff Rehabilitation'
        AND o.latitude = '40.885881'
        AND o.longitude = '-73.6320507'));

COMMIT;
