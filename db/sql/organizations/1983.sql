
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
      'West Hills Hospital ',
      '7300 Medical Center Dr
West Hills, CA 91307',
      'West Hills',
      'CA',
      'ER curbside

OR

Call cell 818-825-5845 (Marc Lavin MD) to arrange to meet at entrance

OR

West Hills Patient Access 
Services Ashlie Scott',
      'No',
      '34.2029255',
      '-118.6287791'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Hospital '
        AND o.latitude = '34.2029255'
        AND o.longitude = '-118.6287791'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Hospital '
        AND o.latitude = '34.2029255'
        AND o.longitude = '-118.6287791'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Hospital '
        AND o.latitude = '34.2029255'
        AND o.longitude = '-118.6287791'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Hospital '
        AND o.latitude = '34.2029255'
        AND o.longitude = '-118.6287791'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Hospital '
        AND o.latitude = '34.2029255'
        AND o.longitude = '-118.6287791'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Hospital '
        AND o.latitude = '34.2029255'
        AND o.longitude = '-118.6287791'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Hospital '
        AND o.latitude = '34.2029255'
        AND o.longitude = '-118.6287791'));

COMMIT;
