
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
      'VCU Medical Center Main Hospital',
      '1250 E Marshall St
Richmond, VA 23298',
      'Richmond',
      'VA',
      '',
      'Unsure',
      '37.540031',
      '-77.4296788'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'VCU Medical Center Main Hospital'
        AND o.latitude = '37.540031'
        AND o.longitude = '-77.4296788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'VCU Medical Center Main Hospital'
        AND o.latitude = '37.540031'
        AND o.longitude = '-77.4296788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'VCU Medical Center Main Hospital'
        AND o.latitude = '37.540031'
        AND o.longitude = '-77.4296788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'VCU Medical Center Main Hospital'
        AND o.latitude = '37.540031'
        AND o.longitude = '-77.4296788'));

COMMIT;
