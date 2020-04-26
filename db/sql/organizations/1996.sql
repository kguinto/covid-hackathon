
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
      'Carepoint Health Hoboken University Medical Center',
      '308 Willow Ave
Hoboken, NJ 07030',
      'Hoboken',
      'NJ',
      'Emergency Room entrance for drop off',
      'Yes',
      '40.7415814',
      '-74.0341491'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carepoint Health Hoboken University Medical Center'
        AND o.latitude = '40.7415814'
        AND o.longitude = '-74.0341491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carepoint Health Hoboken University Medical Center'
        AND o.latitude = '40.7415814'
        AND o.longitude = '-74.0341491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carepoint Health Hoboken University Medical Center'
        AND o.latitude = '40.7415814'
        AND o.longitude = '-74.0341491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carepoint Health Hoboken University Medical Center'
        AND o.latitude = '40.7415814'
        AND o.longitude = '-74.0341491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carepoint Health Hoboken University Medical Center'
        AND o.latitude = '40.7415814'
        AND o.longitude = '-74.0341491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carepoint Health Hoboken University Medical Center'
        AND o.latitude = '40.7415814'
        AND o.longitude = '-74.0341491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carepoint Health Hoboken University Medical Center'
        AND o.latitude = '40.7415814'
        AND o.longitude = '-74.0341491'));

COMMIT;
