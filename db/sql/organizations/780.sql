
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
      'Affinity Urgent Care',
      '3128 Hwy 35
Alvin, TX 77511',
      'Alvin',
      'TX',
      'You may come inside and drop off at the front desk if you like, but you may also drop at the door and call 281-886-8964 to let us know about the drop off.  You can also mail it to us, attn Dani Kennedy',
      'Yes',
      '29.3999524',
      '-95.2476228'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.3999524'
        AND o.longitude = '-95.2476228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.3999524'
        AND o.longitude = '-95.2476228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.3999524'
        AND o.longitude = '-95.2476228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.3999524'
        AND o.longitude = '-95.2476228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.3999524'
        AND o.longitude = '-95.2476228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.3999524'
        AND o.longitude = '-95.2476228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.3999524'
        AND o.longitude = '-95.2476228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.3999524'
        AND o.longitude = '-95.2476228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.3999524'
        AND o.longitude = '-95.2476228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('we are an urgent care with daily exposure to covid 19.  We have zero N95',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.3999524'
        AND o.longitude = '-95.2476228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('and very few surgical masks.  Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.3999524'
        AND o.longitude = '-95.2476228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('wipes and sanitizer are all on allocation from our supplier.  Anything you can donate is helpful.',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.3999524'
        AND o.longitude = '-95.2476228'));

COMMIT;
