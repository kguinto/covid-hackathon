
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
      'Thomas Jefferson University Hospital',
      '233 South 10th Street
Philadelphia, PA 19107',
      'Philadelphia',
      'PA',
      'Bluemle Life Sciences Building (loading dock) https://www.jeffersonhealth.org/coronavirus-covid-19/medical-supply-donation.html',
      'No',
      '39.9477365',
      '-75.156955'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Thomas Jefferson University Hospital'
        AND o.latitude = '39.9477365'
        AND o.longitude = '-75.156955'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Thomas Jefferson University Hospital'
        AND o.latitude = '39.9477365'
        AND o.longitude = '-75.156955'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Thomas Jefferson University Hospital'
        AND o.latitude = '39.9477365'
        AND o.longitude = '-75.156955'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Thomas Jefferson University Hospital'
        AND o.latitude = '39.9477365'
        AND o.longitude = '-75.156955'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Thomas Jefferson University Hospital'
        AND o.latitude = '39.9477365'
        AND o.longitude = '-75.156955'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Thomas Jefferson University Hospital'
        AND o.latitude = '39.9477365'
        AND o.longitude = '-75.156955'));

COMMIT;
