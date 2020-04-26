
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
      'Corner Project',
      '3376 Fenton Ave #3C
The Bronx, NY 10469',
      'Bronx',
      'NY',
      'Attn: Jason Beltre ',
      'Yes',
      '40.8762229',
      '-73.8477415'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Corner Project'
        AND o.latitude = '40.8762229'
        AND o.longitude = '-73.8477415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Corner Project'
        AND o.latitude = '40.8762229'
        AND o.longitude = '-73.8477415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Corner Project'
        AND o.latitude = '40.8762229'
        AND o.longitude = '-73.8477415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Corner Project'
        AND o.latitude = '40.8762229'
        AND o.longitude = '-73.8477415'));

COMMIT;
