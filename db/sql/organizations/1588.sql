
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
      'Mare Island Home Health Inc',
      '1555 Tennessee St
Vallejo, CA 94590',
      'Vallejo',
      'CA',
      'Home Health Agency can use additional supplies ',
      'Yes',
      '38.1095877',
      '-122.2393178'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mare Island Home Health Inc'
        AND o.latitude = '38.1095877'
        AND o.longitude = '-122.2393178'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mare Island Home Health Inc'
        AND o.latitude = '38.1095877'
        AND o.longitude = '-122.2393178'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mare Island Home Health Inc'
        AND o.latitude = '38.1095877'
        AND o.longitude = '-122.2393178'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mare Island Home Health Inc'
        AND o.latitude = '38.1095877'
        AND o.longitude = '-122.2393178'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mare Island Home Health Inc'
        AND o.latitude = '38.1095877'
        AND o.longitude = '-122.2393178'));

COMMIT;
