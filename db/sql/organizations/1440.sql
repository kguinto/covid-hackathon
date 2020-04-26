
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
      'Hollywood Presbyterian Medical Center ',
      '19019 Napa St
Northridge, CA 91324',
      'Northridge ',
      'CA',
      '',
      'Yes',
      '34.2266634',
      '-118.5476415'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center '
        AND o.latitude = '34.2266634'
        AND o.longitude = '-118.5476415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center '
        AND o.latitude = '34.2266634'
        AND o.longitude = '-118.5476415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center '
        AND o.latitude = '34.2266634'
        AND o.longitude = '-118.5476415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center '
        AND o.latitude = '34.2266634'
        AND o.longitude = '-118.5476415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center '
        AND o.latitude = '34.2266634'
        AND o.longitude = '-118.5476415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center '
        AND o.latitude = '34.2266634'
        AND o.longitude = '-118.5476415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center '
        AND o.latitude = '34.2266634'
        AND o.longitude = '-118.5476415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center '
        AND o.latitude = '34.2266634'
        AND o.longitude = '-118.5476415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hollywood Presbyterian Medical Center '
        AND o.latitude = '34.2266634'
        AND o.longitude = '-118.5476415'));

COMMIT;
