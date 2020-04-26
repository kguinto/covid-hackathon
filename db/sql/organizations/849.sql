
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
      'OSF Saint Francis Medical Center ',
      '320 S Summit Dr
Washington, IL 6157',
      'Washington',
      'IL',
      'Please mail! ATTN: Teresa Riech ',
      'Yes',
      '40.6907755',
      '-89.4840536'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'OSF Saint Francis Medical Center '
        AND o.latitude = '40.6907755'
        AND o.longitude = '-89.4840536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'OSF Saint Francis Medical Center '
        AND o.latitude = '40.6907755'
        AND o.longitude = '-89.4840536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'OSF Saint Francis Medical Center '
        AND o.latitude = '40.6907755'
        AND o.longitude = '-89.4840536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'OSF Saint Francis Medical Center '
        AND o.latitude = '40.6907755'
        AND o.longitude = '-89.4840536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'OSF Saint Francis Medical Center '
        AND o.latitude = '40.6907755'
        AND o.longitude = '-89.4840536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'OSF Saint Francis Medical Center '
        AND o.latitude = '40.6907755'
        AND o.longitude = '-89.4840536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'OSF Saint Francis Medical Center '
        AND o.latitude = '40.6907755'
        AND o.longitude = '-89.4840536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'OSF Saint Francis Medical Center '
        AND o.latitude = '40.6907755'
        AND o.longitude = '-89.4840536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'OSF Saint Francis Medical Center '
        AND o.latitude = '40.6907755'
        AND o.longitude = '-89.4840536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'OSF Saint Francis Medical Center '
        AND o.latitude = '40.6907755'
        AND o.longitude = '-89.4840536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Pulse oximeters',
    (SELECT id FROM organizations o
      WHERE o.name = 'OSF Saint Francis Medical Center '
        AND o.latitude = '40.6907755'
        AND o.longitude = '-89.4840536'));

COMMIT;
