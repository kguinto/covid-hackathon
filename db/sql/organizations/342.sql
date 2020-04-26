
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
      'Yale New Haven Health, Park Ave Medical Center',
      '5520 Park Ave
Trumbull, CT 06611',
      'Trumbull',
      'CT',
      'Email DonationsPPE@ynhh.org with instructions as to how hospital staff may contact you',
      'Yes',
      '41.2273667',
      '-73.2430537'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Health, Park Ave Medical Center'
        AND o.latitude = '41.2273667'
        AND o.longitude = '-73.2430537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Health, Park Ave Medical Center'
        AND o.latitude = '41.2273667'
        AND o.longitude = '-73.2430537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Health, Park Ave Medical Center'
        AND o.latitude = '41.2273667'
        AND o.longitude = '-73.2430537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Health, Park Ave Medical Center'
        AND o.latitude = '41.2273667'
        AND o.longitude = '-73.2430537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Health, Park Ave Medical Center'
        AND o.latitude = '41.2273667'
        AND o.longitude = '-73.2430537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Health, Park Ave Medical Center'
        AND o.latitude = '41.2273667'
        AND o.longitude = '-73.2430537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Health, Park Ave Medical Center'
        AND o.latitude = '41.2273667'
        AND o.longitude = '-73.2430537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Health, Park Ave Medical Center'
        AND o.latitude = '41.2273667'
        AND o.longitude = '-73.2430537'));

COMMIT;
