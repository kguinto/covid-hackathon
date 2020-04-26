
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
      'St Joseph''s Hospital, St Johns Hospital, Woodwinds Hospital',
      '45 W 10th St
St Paul, MN 55102',
      'St Paul',
      'MN',
      'We''re desperate for everything. We have only 6 days left of gloves and gowns, yet our surge hasn''t even hit. ',
      'Yes',
      '44.9490988',
      '-93.1000226'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Joseph''s Hospital, St Johns Hospital, Woodwinds Hospital'
        AND o.latitude = '44.9490988'
        AND o.longitude = '-93.1000226'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Joseph''s Hospital, St Johns Hospital, Woodwinds Hospital'
        AND o.latitude = '44.9490988'
        AND o.longitude = '-93.1000226'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Joseph''s Hospital, St Johns Hospital, Woodwinds Hospital'
        AND o.latitude = '44.9490988'
        AND o.longitude = '-93.1000226'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Joseph''s Hospital, St Johns Hospital, Woodwinds Hospital'
        AND o.latitude = '44.9490988'
        AND o.longitude = '-93.1000226'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Joseph''s Hospital, St Johns Hospital, Woodwinds Hospital'
        AND o.latitude = '44.9490988'
        AND o.longitude = '-93.1000226'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Joseph''s Hospital, St Johns Hospital, Woodwinds Hospital'
        AND o.latitude = '44.9490988'
        AND o.longitude = '-93.1000226'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Joseph''s Hospital, St Johns Hospital, Woodwinds Hospital'
        AND o.latitude = '44.9490988'
        AND o.longitude = '-93.1000226'));

COMMIT;
