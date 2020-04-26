
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
      'New Franklin Center for Rehabilitation and Nursing',
      '142-27 Franklin Ave
Flushing, NY 11355',
      'Flushing',
      'NY',
      'Attn: Debby Tseng',
      'No',
      '40.7571396',
      '-73.8229295'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Franklin Center for Rehabilitation and Nursing'
        AND o.latitude = '40.7571396'
        AND o.longitude = '-73.8229295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Franklin Center for Rehabilitation and Nursing'
        AND o.latitude = '40.7571396'
        AND o.longitude = '-73.8229295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Franklin Center for Rehabilitation and Nursing'
        AND o.latitude = '40.7571396'
        AND o.longitude = '-73.8229295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Franklin Center for Rehabilitation and Nursing'
        AND o.latitude = '40.7571396'
        AND o.longitude = '-73.8229295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Franklin Center for Rehabilitation and Nursing'
        AND o.latitude = '40.7571396'
        AND o.longitude = '-73.8229295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Franklin Center for Rehabilitation and Nursing'
        AND o.latitude = '40.7571396'
        AND o.longitude = '-73.8229295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Franklin Center for Rehabilitation and Nursing'
        AND o.latitude = '40.7571396'
        AND o.longitude = '-73.8229295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Franklin Center for Rehabilitation and Nursing'
        AND o.latitude = '40.7571396'
        AND o.longitude = '-73.8229295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Franklin Center for Rehabilitation and Nursing'
        AND o.latitude = '40.7571396'
        AND o.longitude = '-73.8229295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Franklin Center for Rehabilitation and Nursing'
        AND o.latitude = '40.7571396'
        AND o.longitude = '-73.8229295'));

COMMIT;
