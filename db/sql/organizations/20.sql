
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
      'Altech Diagnostics - on behalf of local Nurses',
      '4020 SW 54th Ave
Davie, FL 33314',
      'Davie',
      'FL',
      'Drop at front gate. This will be residential area',
      'Yes',
      '26.0723829',
      '-80.2189511'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Altech Diagnostics - on behalf of local Nurses'
        AND o.latitude = '26.0723829'
        AND o.longitude = '-80.2189511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Altech Diagnostics - on behalf of local Nurses'
        AND o.latitude = '26.0723829'
        AND o.longitude = '-80.2189511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Altech Diagnostics - on behalf of local Nurses'
        AND o.latitude = '26.0723829'
        AND o.longitude = '-80.2189511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Altech Diagnostics - on behalf of local Nurses'
        AND o.latitude = '26.0723829'
        AND o.longitude = '-80.2189511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Altech Diagnostics - on behalf of local Nurses'
        AND o.latitude = '26.0723829'
        AND o.longitude = '-80.2189511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Altech Diagnostics - on behalf of local Nurses'
        AND o.latitude = '26.0723829'
        AND o.longitude = '-80.2189511'));

COMMIT;
