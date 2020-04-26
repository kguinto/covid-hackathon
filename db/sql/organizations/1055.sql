
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
      'Robeson Family Practice Associate ',
      '1002 E 4th Ave
Red Springs, NC 28377',
      'Red Springs ',
      'NC',
      'ATTN: Annette Jones (Nursing)',
      'No',
      '34.804892',
      '-79.166908'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Robeson Family Practice Associate '
        AND o.latitude = '34.804892'
        AND o.longitude = '-79.166908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Robeson Family Practice Associate '
        AND o.latitude = '34.804892'
        AND o.longitude = '-79.166908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Robeson Family Practice Associate '
        AND o.latitude = '34.804892'
        AND o.longitude = '-79.166908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Robeson Family Practice Associate '
        AND o.latitude = '34.804892'
        AND o.longitude = '-79.166908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Robeson Family Practice Associate '
        AND o.latitude = '34.804892'
        AND o.longitude = '-79.166908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Robeson Family Practice Associate '
        AND o.latitude = '34.804892'
        AND o.longitude = '-79.166908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Robeson Family Practice Associate '
        AND o.latitude = '34.804892'
        AND o.longitude = '-79.166908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Robeson Family Practice Associate '
        AND o.latitude = '34.804892'
        AND o.longitude = '-79.166908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Robeson Family Practice Associate '
        AND o.latitude = '34.804892'
        AND o.longitude = '-79.166908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Robeson Family Practice Associate '
        AND o.latitude = '34.804892'
        AND o.longitude = '-79.166908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Distilled Water for Autoclave Machine & Disinfecting Spray',
    (SELECT id FROM organizations o
      WHERE o.name = 'Robeson Family Practice Associate '
        AND o.latitude = '34.804892'
        AND o.longitude = '-79.166908'));

COMMIT;
