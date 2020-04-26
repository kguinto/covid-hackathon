
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
      'Regal Medical Group',
      '8510 Balboa Blvd #150
Northridge, CA 91325',
      'Northridge',
      'CA',
      'Contact: Ronnique Crider, Safety Officer (818) 810-4628 or rcrider@regalmed.com, I can meet someone at our main entrance. We are in desperate need of all the above for our clinics.',
      'Yes',
      '34.2245502',
      '-118.50145'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regal Medical Group'
        AND o.latitude = '34.2245502'
        AND o.longitude = '-118.50145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regal Medical Group'
        AND o.latitude = '34.2245502'
        AND o.longitude = '-118.50145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regal Medical Group'
        AND o.latitude = '34.2245502'
        AND o.longitude = '-118.50145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regal Medical Group'
        AND o.latitude = '34.2245502'
        AND o.longitude = '-118.50145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regal Medical Group'
        AND o.latitude = '34.2245502'
        AND o.longitude = '-118.50145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regal Medical Group'
        AND o.latitude = '34.2245502'
        AND o.longitude = '-118.50145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regal Medical Group'
        AND o.latitude = '34.2245502'
        AND o.longitude = '-118.50145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regal Medical Group'
        AND o.latitude = '34.2245502'
        AND o.longitude = '-118.50145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regal Medical Group'
        AND o.latitude = '34.2245502'
        AND o.longitude = '-118.50145'));

COMMIT;
