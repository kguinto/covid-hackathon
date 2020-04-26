
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
      'Dynamic Mobile Imaging',
      '1100 Welborne Dr #300
Richmond, VA 23229',
      'Henrico',
      'VA',
      'Attn: Rob Goode',
      'Yes',
      '37.5950343',
      '-77.5675059'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dynamic Mobile Imaging'
        AND o.latitude = '37.5950343'
        AND o.longitude = '-77.5675059'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dynamic Mobile Imaging'
        AND o.latitude = '37.5950343'
        AND o.longitude = '-77.5675059'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dynamic Mobile Imaging'
        AND o.latitude = '37.5950343'
        AND o.longitude = '-77.5675059'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dynamic Mobile Imaging'
        AND o.latitude = '37.5950343'
        AND o.longitude = '-77.5675059'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dynamic Mobile Imaging'
        AND o.latitude = '37.5950343'
        AND o.longitude = '-77.5675059'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dynamic Mobile Imaging'
        AND o.latitude = '37.5950343'
        AND o.longitude = '-77.5675059'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dynamic Mobile Imaging'
        AND o.latitude = '37.5950343'
        AND o.longitude = '-77.5675059'));

COMMIT;
