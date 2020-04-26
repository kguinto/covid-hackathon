
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
      'Spectrum Health Lakeland ',
      '1234 Napier Ave.
St Joseph, MI 49085',
      'St Joseph ',
      'MI',
      'Central Command station',
      'Yes',
      '42.0886172',
      '-86.4783353'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health Lakeland '
        AND o.latitude = '42.0886172'
        AND o.longitude = '-86.4783353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health Lakeland '
        AND o.latitude = '42.0886172'
        AND o.longitude = '-86.4783353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health Lakeland '
        AND o.latitude = '42.0886172'
        AND o.longitude = '-86.4783353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health Lakeland '
        AND o.latitude = '42.0886172'
        AND o.longitude = '-86.4783353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health Lakeland '
        AND o.latitude = '42.0886172'
        AND o.longitude = '-86.4783353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health Lakeland '
        AND o.latitude = '42.0886172'
        AND o.longitude = '-86.4783353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health Lakeland '
        AND o.latitude = '42.0886172'
        AND o.longitude = '-86.4783353'));

COMMIT;
