
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
      'OhioHealth Pickerington Health Center',
      '1010 Refugee Rd
Pickerington, OH 43147',
      'Pickerington',
      'OH',
      'Please come to the main entrance and contact Nikki Lyons at 614-202-4210',
      'No',
      '39.9117389',
      '-82.7829064'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Pickerington Health Center'
        AND o.latitude = '39.9117389'
        AND o.longitude = '-82.7829064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Pickerington Health Center'
        AND o.latitude = '39.9117389'
        AND o.longitude = '-82.7829064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Pickerington Health Center'
        AND o.latitude = '39.9117389'
        AND o.longitude = '-82.7829064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Pickerington Health Center'
        AND o.latitude = '39.9117389'
        AND o.longitude = '-82.7829064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Pickerington Health Center'
        AND o.latitude = '39.9117389'
        AND o.longitude = '-82.7829064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Pickerington Health Center'
        AND o.latitude = '39.9117389'
        AND o.longitude = '-82.7829064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Pickerington Health Center'
        AND o.latitude = '39.9117389'
        AND o.longitude = '-82.7829064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Pickerington Health Center'
        AND o.latitude = '39.9117389'
        AND o.longitude = '-82.7829064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Pickerington Health Center'
        AND o.latitude = '39.9117389'
        AND o.longitude = '-82.7829064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Pickerington Health Center'
        AND o.latitude = '39.9117389'
        AND o.longitude = '-82.7829064'));

COMMIT;
