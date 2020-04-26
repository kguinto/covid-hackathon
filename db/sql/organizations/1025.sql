
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
      'Capsule Pharmacy',
      '20 W 36th St
New York, NY 10018',
      'New York - Manhattan',
      'NY',
      'Attn: Jeff Garlewicz',
      'Yes',
      '40.7500975',
      '-73.9849826'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capsule Pharmacy'
        AND o.latitude = '40.7500975'
        AND o.longitude = '-73.9849826'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capsule Pharmacy'
        AND o.latitude = '40.7500975'
        AND o.longitude = '-73.9849826'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capsule Pharmacy'
        AND o.latitude = '40.7500975'
        AND o.longitude = '-73.9849826'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capsule Pharmacy'
        AND o.latitude = '40.7500975'
        AND o.longitude = '-73.9849826'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capsule Pharmacy'
        AND o.latitude = '40.7500975'
        AND o.longitude = '-73.9849826'));

COMMIT;
