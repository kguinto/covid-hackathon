
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
      'ChristianaCare',
      '1 Reads Way #100
New Castle, DE 19720',
      'New Castle',
      'DE',
      'Please email: Doreen.Dixon@ChristianaCare.org before dropping off the donations. ',
      'Please email Doreen.Dixon@ChristianaCare.org to get answers for this question.',
      '39.6881852',
      '-75.6083512'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ChristianaCare'
        AND o.latitude = '39.6881852'
        AND o.longitude = '-75.6083512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'ChristianaCare'
        AND o.latitude = '39.6881852'
        AND o.longitude = '-75.6083512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'ChristianaCare'
        AND o.latitude = '39.6881852'
        AND o.longitude = '-75.6083512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'ChristianaCare'
        AND o.latitude = '39.6881852'
        AND o.longitude = '-75.6083512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'ChristianaCare'
        AND o.latitude = '39.6881852'
        AND o.longitude = '-75.6083512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'ChristianaCare'
        AND o.latitude = '39.6881852'
        AND o.longitude = '-75.6083512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'ChristianaCare'
        AND o.latitude = '39.6881852'
        AND o.longitude = '-75.6083512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'ChristianaCare'
        AND o.latitude = '39.6881852'
        AND o.longitude = '-75.6083512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'ChristianaCare'
        AND o.latitude = '39.6881852'
        AND o.longitude = '-75.6083512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'ChristianaCare'
        AND o.latitude = '39.6881852'
        AND o.longitude = '-75.6083512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable stethoscopes',
    (SELECT id FROM organizations o
      WHERE o.name = 'ChristianaCare'
        AND o.latitude = '39.6881852'
        AND o.longitude = '-75.6083512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('iPads. To donate iPads',
    (SELECT id FROM organizations o
      WHERE o.name = 'ChristianaCare'
        AND o.latitude = '39.6881852'
        AND o.longitude = '-75.6083512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('please clear the security and data first. You can follow these instructions to clear security and data: https://support.apple.com/en-us/HT201351',
    (SELECT id FROM organizations o
      WHERE o.name = 'ChristianaCare'
        AND o.latitude = '39.6881852'
        AND o.longitude = '-75.6083512'));

COMMIT;
