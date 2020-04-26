
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
      'St. Joseph''s Hospital Grabow Therapy and Wellness Center ',
      '3217 Squalicum Parkway
Bellingham, WA 98225',
      'Bellingham',
      'WA',
      'Donations can be dropped off during the work week BEGINNING TUESDAY, MARCH 24, 2020 between the hours of 9 a.m. and 3 p.m. at the Grabow Therapy and Wellness Center located on the hospital campus at 3217 Squalicum Parkway, Bellingham, WA 98225. Place your items to be donated in the trunk/back hatch of your vehicle. Do not exit your vehicle. A PeaceHealth caregiver will remove the items and place them in our donation bins.

If you have more than 100 of any item, please take your items to the drop-off location for the Whatcom County Unified Command Center, 4233 Guide Meridian, Suite 101. You can contact Rud Browne, Donation Branch Director for Whatcom County at WUC_Donations@co.whatcom.wa.us with any questions.',
      'Yes',
      '48.7727312',
      '-122.4678056'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Hospital Grabow Therapy and Wellness Center '
        AND o.latitude = '48.7727312'
        AND o.longitude = '-122.4678056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Hospital Grabow Therapy and Wellness Center '
        AND o.latitude = '48.7727312'
        AND o.longitude = '-122.4678056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Hospital Grabow Therapy and Wellness Center '
        AND o.latitude = '48.7727312'
        AND o.longitude = '-122.4678056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Hospital Grabow Therapy and Wellness Center '
        AND o.latitude = '48.7727312'
        AND o.longitude = '-122.4678056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Hospital Grabow Therapy and Wellness Center '
        AND o.latitude = '48.7727312'
        AND o.longitude = '-122.4678056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Hospital Grabow Therapy and Wellness Center '
        AND o.latitude = '48.7727312'
        AND o.longitude = '-122.4678056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Hospital Grabow Therapy and Wellness Center '
        AND o.latitude = '48.7727312'
        AND o.longitude = '-122.4678056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Hospital Grabow Therapy and Wellness Center '
        AND o.latitude = '48.7727312'
        AND o.longitude = '-122.4678056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Hospital Grabow Therapy and Wellness Center '
        AND o.latitude = '48.7727312'
        AND o.longitude = '-122.4678056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph''s Hospital Grabow Therapy and Wellness Center '
        AND o.latitude = '48.7727312'
        AND o.longitude = '-122.4678056'));

COMMIT;
