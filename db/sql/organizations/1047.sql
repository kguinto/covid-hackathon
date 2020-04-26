
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
      'Lowell General Hospital',
      '295 Varnum Ave
Lowell, MA 01854',
      'Lowell',
      'MA',
      'Drop off

or

ATTN: CeCe Lynch, CNO',
      'Yes',
      '42.6477369',
      '-71.3422768'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lowell General Hospital'
        AND o.latitude = '42.6477369'
        AND o.longitude = '-71.3422768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lowell General Hospital'
        AND o.latitude = '42.6477369'
        AND o.longitude = '-71.3422768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lowell General Hospital'
        AND o.latitude = '42.6477369'
        AND o.longitude = '-71.3422768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lowell General Hospital'
        AND o.latitude = '42.6477369'
        AND o.longitude = '-71.3422768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lowell General Hospital'
        AND o.latitude = '42.6477369'
        AND o.longitude = '-71.3422768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lowell General Hospital'
        AND o.latitude = '42.6477369'
        AND o.longitude = '-71.3422768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lowell General Hospital'
        AND o.latitude = '42.6477369'
        AND o.longitude = '-71.3422768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lowell General Hospital'
        AND o.latitude = '42.6477369'
        AND o.longitude = '-71.3422768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lowell General Hospital'
        AND o.latitude = '42.6477369'
        AND o.longitude = '-71.3422768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Ponchos',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lowell General Hospital'
        AND o.latitude = '42.6477369'
        AND o.longitude = '-71.3422768'));

COMMIT;
