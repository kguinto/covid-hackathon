
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
      'Westpark Village',
      '2351 Solomon Ave
Billings, MT 59102',
      'Billings',
      'MT',
      'leave at front door',
      'Yes',
      '45.7876209',
      '-108.5753811'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westpark Village'
        AND o.latitude = '45.7876209'
        AND o.longitude = '-108.5753811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westpark Village'
        AND o.latitude = '45.7876209'
        AND o.longitude = '-108.5753811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westpark Village'
        AND o.latitude = '45.7876209'
        AND o.longitude = '-108.5753811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westpark Village'
        AND o.latitude = '45.7876209'
        AND o.longitude = '-108.5753811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westpark Village'
        AND o.latitude = '45.7876209'
        AND o.longitude = '-108.5753811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westpark Village'
        AND o.latitude = '45.7876209'
        AND o.longitude = '-108.5753811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westpark Village'
        AND o.latitude = '45.7876209'
        AND o.longitude = '-108.5753811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westpark Village'
        AND o.latitude = '45.7876209'
        AND o.longitude = '-108.5753811'));

COMMIT;
