
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
      'Honor Community Health',
      '1701 Baldwin Ave
Pontiac, MI 48340',
      'Pontiac',
      'MI',
      'Please email wstricklin@honorcommunityhealth.org when shipments will occur and we will pick up at the curb.',
      'Yes',
      '42.6826975',
      '-83.3023094'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Honor Community Health'
        AND o.latitude = '42.6826975'
        AND o.longitude = '-83.3023094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Honor Community Health'
        AND o.latitude = '42.6826975'
        AND o.longitude = '-83.3023094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Honor Community Health'
        AND o.latitude = '42.6826975'
        AND o.longitude = '-83.3023094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Honor Community Health'
        AND o.latitude = '42.6826975'
        AND o.longitude = '-83.3023094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Honor Community Health'
        AND o.latitude = '42.6826975'
        AND o.longitude = '-83.3023094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Honor Community Health'
        AND o.latitude = '42.6826975'
        AND o.longitude = '-83.3023094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Honor Community Health'
        AND o.latitude = '42.6826975'
        AND o.longitude = '-83.3023094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Honor Community Health'
        AND o.latitude = '42.6826975'
        AND o.longitude = '-83.3023094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Honor Community Health'
        AND o.latitude = '42.6826975'
        AND o.longitude = '-83.3023094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Honor Community Health'
        AND o.latitude = '42.6826975'
        AND o.longitude = '-83.3023094'));

COMMIT;
