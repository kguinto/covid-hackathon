
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
      'Loyola University Medical Center',
      '2160 S 1st Ave
Maywood, IL 60153',
      'Maywood',
      'IL',
      'Dock 1, located North side of campus, mailing addressed to Wil Gonzalez',
      'No',
      '41.8600176',
      '-87.8333511'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Loyola University Medical Center'
        AND o.latitude = '41.8600176'
        AND o.longitude = '-87.8333511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Loyola University Medical Center'
        AND o.latitude = '41.8600176'
        AND o.longitude = '-87.8333511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Loyola University Medical Center'
        AND o.latitude = '41.8600176'
        AND o.longitude = '-87.8333511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Loyola University Medical Center'
        AND o.latitude = '41.8600176'
        AND o.longitude = '-87.8333511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Loyola University Medical Center'
        AND o.latitude = '41.8600176'
        AND o.longitude = '-87.8333511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Loyola University Medical Center'
        AND o.latitude = '41.8600176'
        AND o.longitude = '-87.8333511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Loyola University Medical Center'
        AND o.latitude = '41.8600176'
        AND o.longitude = '-87.8333511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Loyola University Medical Center'
        AND o.latitude = '41.8600176'
        AND o.longitude = '-87.8333511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Loyola University Medical Center'
        AND o.latitude = '41.8600176'
        AND o.longitude = '-87.8333511'));

COMMIT;
