
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
      'Brattleboro Retreat',
      'Anna Marsh Ln
Brattleboro, VT 05301',
      'Brattleboro',
      'VT',
      'Anna Marsh Lane',
      'Yes',
      '42.8587059',
      '-72.5626366'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brattleboro Retreat'
        AND o.latitude = '42.8587059'
        AND o.longitude = '-72.5626366'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brattleboro Retreat'
        AND o.latitude = '42.8587059'
        AND o.longitude = '-72.5626366'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brattleboro Retreat'
        AND o.latitude = '42.8587059'
        AND o.longitude = '-72.5626366'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brattleboro Retreat'
        AND o.latitude = '42.8587059'
        AND o.longitude = '-72.5626366'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brattleboro Retreat'
        AND o.latitude = '42.8587059'
        AND o.longitude = '-72.5626366'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brattleboro Retreat'
        AND o.latitude = '42.8587059'
        AND o.longitude = '-72.5626366'));

COMMIT;
