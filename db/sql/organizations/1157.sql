
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
      'Crossroads Home Health & Hospice',
      '1109 Vicente St #101
San Francisco, CA 94116',
      'San Francisco',
      'CA',
      'Call 415-682-2111 and you can drop and a staff member will grab from you. Thanks!',
      'Yes',
      '37.7389664',
      '-122.4790533'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crossroads Home Health & Hospice'
        AND o.latitude = '37.7389664'
        AND o.longitude = '-122.4790533'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crossroads Home Health & Hospice'
        AND o.latitude = '37.7389664'
        AND o.longitude = '-122.4790533'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crossroads Home Health & Hospice'
        AND o.latitude = '37.7389664'
        AND o.longitude = '-122.4790533'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crossroads Home Health & Hospice'
        AND o.latitude = '37.7389664'
        AND o.longitude = '-122.4790533'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crossroads Home Health & Hospice'
        AND o.latitude = '37.7389664'
        AND o.longitude = '-122.4790533'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crossroads Home Health & Hospice'
        AND o.latitude = '37.7389664'
        AND o.longitude = '-122.4790533'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crossroads Home Health & Hospice'
        AND o.latitude = '37.7389664'
        AND o.longitude = '-122.4790533'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crossroads Home Health & Hospice'
        AND o.latitude = '37.7389664'
        AND o.longitude = '-122.4790533'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crossroads Home Health & Hospice'
        AND o.latitude = '37.7389664'
        AND o.longitude = '-122.4790533'));

COMMIT;
