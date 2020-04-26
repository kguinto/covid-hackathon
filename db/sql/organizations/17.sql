
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
      'Swedish Issaquah Emergency Department',
      '751 NE Blakely Dr
Issaquah, WA 98029',
      'Issaquah',
      'WA',
      'Drop off at Emergency Department and leave with registration. Please mark "For Swedish Issaquah ED workers." Feel free to leave a note of encouragement. If anyone is unsure have them get one of the emergency room doctors.',
      'Yes',
      '47.536237',
      '-122.0220539'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Issaquah Emergency Department'
        AND o.latitude = '47.536237'
        AND o.longitude = '-122.0220539'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Issaquah Emergency Department'
        AND o.latitude = '47.536237'
        AND o.longitude = '-122.0220539'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Issaquah Emergency Department'
        AND o.latitude = '47.536237'
        AND o.longitude = '-122.0220539'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Issaquah Emergency Department'
        AND o.latitude = '47.536237'
        AND o.longitude = '-122.0220539'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Issaquah Emergency Department'
        AND o.latitude = '47.536237'
        AND o.longitude = '-122.0220539'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Issaquah Emergency Department'
        AND o.latitude = '47.536237'
        AND o.longitude = '-122.0220539'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Issaquah Emergency Department'
        AND o.latitude = '47.536237'
        AND o.longitude = '-122.0220539'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Issaquah Emergency Department'
        AND o.latitude = '47.536237'
        AND o.longitude = '-122.0220539'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Issaquah Emergency Department'
        AND o.latitude = '47.536237'
        AND o.longitude = '-122.0220539'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Issaquah Emergency Department'
        AND o.latitude = '47.536237'
        AND o.longitude = '-122.0220539'));

COMMIT;
