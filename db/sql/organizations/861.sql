
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
      'Capital Home Health Agency, Inc. ',
      ' 5751 W Adams Blvd
Los Angeles, CA 90016',
      'Los Angeles',
      'CA',
      'Drop off at front door and call (323) 930-7809. We send out Registered Nurses and caregivers in the field to take care of sick people. ',
      'Yes',
      '34.0326722',
      '-118.368771'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Home Health Agency, Inc. '
        AND o.latitude = '34.0326722'
        AND o.longitude = '-118.368771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Home Health Agency, Inc. '
        AND o.latitude = '34.0326722'
        AND o.longitude = '-118.368771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Home Health Agency, Inc. '
        AND o.latitude = '34.0326722'
        AND o.longitude = '-118.368771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Home Health Agency, Inc. '
        AND o.latitude = '34.0326722'
        AND o.longitude = '-118.368771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Home Health Agency, Inc. '
        AND o.latitude = '34.0326722'
        AND o.longitude = '-118.368771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Home Health Agency, Inc. '
        AND o.latitude = '34.0326722'
        AND o.longitude = '-118.368771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Home Health Agency, Inc. '
        AND o.latitude = '34.0326722'
        AND o.longitude = '-118.368771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Home Health Agency, Inc. '
        AND o.latitude = '34.0326722'
        AND o.longitude = '-118.368771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Home Health Agency, Inc. '
        AND o.latitude = '34.0326722'
        AND o.longitude = '-118.368771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Home Health Agency, Inc. '
        AND o.latitude = '34.0326722'
        AND o.longitude = '-118.368771'));

COMMIT;
