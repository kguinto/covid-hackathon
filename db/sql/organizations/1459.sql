
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
      'Women''s Health Consulting',
      '200 S Michigan Ave #1550
Chicago, IL 60604',
      'Chicago',
      'IL',
      'Mail (ATTN: Teresa Jackson PPE) or Drop-off OK',
      'No',
      '41.8793168',
      '-87.6249224'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women''s Health Consulting'
        AND o.latitude = '41.8793168'
        AND o.longitude = '-87.6249224'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women''s Health Consulting'
        AND o.latitude = '41.8793168'
        AND o.longitude = '-87.6249224'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women''s Health Consulting'
        AND o.latitude = '41.8793168'
        AND o.longitude = '-87.6249224'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women''s Health Consulting'
        AND o.latitude = '41.8793168'
        AND o.longitude = '-87.6249224'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women''s Health Consulting'
        AND o.latitude = '41.8793168'
        AND o.longitude = '-87.6249224'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women''s Health Consulting'
        AND o.latitude = '41.8793168'
        AND o.longitude = '-87.6249224'));

COMMIT;
