
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
      'VA Portland Health Care System',
      '3710 SW US Veterans Hospital Rd
Portland, OR 97239',
      'Portland',
      'OR',
      'Curbside drop off: call 214-549-8031 to schedule
Mailing address:Lakshmi Mudambi, Mail code: P3Pulm, 3710 SW US Veterans Hospital Rd, Portland, OR 97239',
      'Yes',
      '45.4969272',
      '-122.6840952'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'VA Portland Health Care System'
        AND o.latitude = '45.4969272'
        AND o.longitude = '-122.6840952'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'VA Portland Health Care System'
        AND o.latitude = '45.4969272'
        AND o.longitude = '-122.6840952'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'VA Portland Health Care System'
        AND o.latitude = '45.4969272'
        AND o.longitude = '-122.6840952'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'VA Portland Health Care System'
        AND o.latitude = '45.4969272'
        AND o.longitude = '-122.6840952'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'VA Portland Health Care System'
        AND o.latitude = '45.4969272'
        AND o.longitude = '-122.6840952'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'VA Portland Health Care System'
        AND o.latitude = '45.4969272'
        AND o.longitude = '-122.6840952'));

COMMIT;
