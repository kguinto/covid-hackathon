
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
      'TCMH Medical Complex',
      '1337 S Sam Houston Blvd
Houston, MO 65483',
      'Houston',
      'MO',
      '1337 S. Sam Houston Blvd, Houston, MO, 65483 ATTN: Hope Best',
      'Yes',
      '37.3159368',
      '-91.9608847'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'TCMH Medical Complex'
        AND o.latitude = '37.3159368'
        AND o.longitude = '-91.9608847'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'TCMH Medical Complex'
        AND o.latitude = '37.3159368'
        AND o.longitude = '-91.9608847'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'TCMH Medical Complex'
        AND o.latitude = '37.3159368'
        AND o.longitude = '-91.9608847'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'TCMH Medical Complex'
        AND o.latitude = '37.3159368'
        AND o.longitude = '-91.9608847'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'TCMH Medical Complex'
        AND o.latitude = '37.3159368'
        AND o.longitude = '-91.9608847'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'TCMH Medical Complex'
        AND o.latitude = '37.3159368'
        AND o.longitude = '-91.9608847'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'TCMH Medical Complex'
        AND o.latitude = '37.3159368'
        AND o.longitude = '-91.9608847'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'TCMH Medical Complex'
        AND o.latitude = '37.3159368'
        AND o.longitude = '-91.9608847'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'TCMH Medical Complex'
        AND o.latitude = '37.3159368'
        AND o.longitude = '-91.9608847'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'TCMH Medical Complex'
        AND o.latitude = '37.3159368'
        AND o.longitude = '-91.9608847'));

COMMIT;
