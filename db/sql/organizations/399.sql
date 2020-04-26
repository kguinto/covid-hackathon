
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
      'Pampa Regional Medical Center',
      '3023 Perryton Pkwy
Pampa, TX 79065',
      'Pampa',
      'TX',
      'Inside at front desk ',
      'Yes',
      '35.5725936',
      '-100.9646286'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pampa Regional Medical Center'
        AND o.latitude = '35.5725936'
        AND o.longitude = '-100.9646286'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pampa Regional Medical Center'
        AND o.latitude = '35.5725936'
        AND o.longitude = '-100.9646286'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pampa Regional Medical Center'
        AND o.latitude = '35.5725936'
        AND o.longitude = '-100.9646286'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pampa Regional Medical Center'
        AND o.latitude = '35.5725936'
        AND o.longitude = '-100.9646286'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pampa Regional Medical Center'
        AND o.latitude = '35.5725936'
        AND o.longitude = '-100.9646286'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Swabs to test covid-19',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pampa Regional Medical Center'
        AND o.latitude = '35.5725936'
        AND o.longitude = '-100.9646286'));

COMMIT;
